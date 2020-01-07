import { IPositionOrientation } from "./IPositionOrientation";
import { ITemperature } from "./ITemperature";
import { IHumidity } from "./IHumidity";
import { ILocation } from './ILocation';

export interface IBoxData {
    Timestamp: number;
    Temperature: ITemperature;
    Humidity: IHumidity;
    Location: ILocation;
    PositionOrientation: IPositionOrientation;
}