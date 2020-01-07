import { IPositionOrientation } from "./IPositionOrientation";
import { ITemperature } from "./ITemperature";
import { IHumidity } from "./IHumidity";

export interface IBoxData {
    Timestamp: number;
    Temperature: ITemperature;
    Humidity: IHumidity;
    Location: Location;
    PositionOrientation: IPositionOrientation;
}