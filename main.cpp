#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QUrl>
#include <QDebug>
#include <QQmlContext>

#include "mylang.h"
#include "mytranslator.h"
#include "setdata.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    QQmlContext *conApp=engine.rootContext();

    qmlRegisterType<MyLang>("MyLang", 1, 0, "MyLang");      //Translator class Qml add
    MyTranslator myTrans(&app);                             //Translator class call

    setData sData;                                          //Set data attr
    QUrl appName(QString("%1").arg(app.applicationDisplayName()));
    QUrl appPath(QString("%1").arg(app.applicationDirPath()));

    qDebug()<<"Application "<<appName<<" is directory "<<appPath;

    conApp->setContextProperty("myTrans", (QObject*)&myTrans);
    conApp->setContextProperty("setData",(QObject*)&sData);



    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
