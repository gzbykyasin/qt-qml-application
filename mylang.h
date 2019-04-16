#ifndef MYLANG_H
#define MYLANG_H

#include <QObject>
#include <QLocale>

class MyLang : public QObject
{
    Q_OBJECT
public:
    MyLang() {}

    enum E_Languages
    {
        TR = QLocale::Turkish,
        ENG = QLocale::English

     };

    Q_ENUM(E_Languages)
};


#endif // MYLANG_H
