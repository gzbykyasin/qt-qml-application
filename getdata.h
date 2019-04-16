#ifndef GETDATA_H
#define GETDATA_H

#include <QObject>

class getData : public QObject
{
    Q_OBJECT
public:
    explicit getData(QObject *parent = nullptr);

signals:

public slots:
};

#endif // GETDATA_H