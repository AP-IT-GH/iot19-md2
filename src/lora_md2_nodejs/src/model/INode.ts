export interface INode {
    appId: string;
    devId: string;
    latitude: number;
    longitude: number;
    altitude: number;
    description: string;
    fCntUp: number;
    fCntDown: number;
    disableFCntCheck: boolean;
    uses32BitFCnt: boolean;
    activationConstraints: string;
    usedDevNoncesList: any[];
    usedAppNoncesList: any[];
    lastSeen: number;
    appEui: string;
    devEui: string;
    appKey: string;
    appSKey: string;
    nwkSKey: string;
    devAddr: string;
    attributes: any;
}