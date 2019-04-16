#include "setdata.h"

setData::setData(QObject *parent) : QObject(parent)
{

}

void setData::setOffset(QString s){
    qDebug()<<"-----Set Offset-----\n"<<s<<"-------"<<++this->counter;

    emit this->getOffset(QString::number(this->counter));
}


