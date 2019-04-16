#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QThread>
#include <QQuickView>
#include <QQmlEngine>
#include <QQmlContext>
#include "mylang.h"
#include "mytranslator.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<MyLang>("MyLang", 1, 0, "MyLang");

    QQmlApplicationEngine engine;
    MyTranslator myTrans(&app);

    engine.rootContext()->setContextProperty("myTrans", (QObject*)&myTrans);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
