import { IHumidityBoundaries } from "./IHumidityBoundaries";
import { ITemperatureBoundaries } from "./ITemperatureBoundaries";

export interface IBox {
    Content: string;
    TemperatureBoundaries: ITemperatureBoundaries;
    HumidityBoundaries: IHumidityBoundaries;
    IsWithinBoundaries: boolean;
    Id: string;
}
