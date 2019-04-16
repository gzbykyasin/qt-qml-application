#ifndef SETDATA_H
#define SETDATA_H

#include <QObject>
#include <QDebug>
class setData : public QObject
{
    Q_OBJECT    
    //Q_PROPERTY(QString setOffset READ setOffset NOTIFY setOffset)
public:
    explicit setData(QObject *parent = nullptr);


signals:
    void getOffset(QString c);
public slots:
    void setOffset(QString s);

private:
    int32_t counter=0;
};

#endif // SETDATA_H
