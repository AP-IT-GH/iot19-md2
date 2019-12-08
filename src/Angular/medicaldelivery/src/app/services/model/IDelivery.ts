import { IBox } from './IBox';

export interface IDelivery {
    BeginPoint: string;
    Description: string;
    EndPoint: string;
    Transportername: string;
    Boxes: IBox[];
    Id: string;
}