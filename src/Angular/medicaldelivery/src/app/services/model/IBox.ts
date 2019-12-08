import { IHumidityBoundaries } from "./IHumidityBoundaries";
import { ITemperatureBoundaries } from "./ITemperatureBoundaries";

export interface IBox {
    content: string
    humidity_boundaries: IHumidityBoundaries
    id: string
    temperature_boundaries: ITemperatureBoundaries
}
