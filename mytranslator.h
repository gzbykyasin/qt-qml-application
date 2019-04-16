#ifndef MYTRANSLATOR_H
#define MYTRANSLATOR_H


#include <QObject>
#include <QGuiApplication>
#include <QQuickView>
#include <QTranslator>
#include "mylang.h"

class MyTranslator : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString emptyString READ getEmptyString NOTIFY languageChanged)

public:
    MyTranslator(QGuiApplication* app) { myApp = app; }

    QString getEmptyString() { return ""; }

signals:
    void languageChanged();

public slots:
    void updateLanguage(int lang){
        switch(lang){
        case MyLang::TR:
            myTranslator.load("tr_TR", ":/translator");
            myApp->installTranslator(&myTranslator);
            break;
        default:
            myApp->removeTranslator(&myTranslator);
            break;
        }
        emit languageChanged();
    }

private:
    QGuiApplication* myApp;
    QTranslator myTranslator;
};
#endif // MYTRANSLATOR_H
