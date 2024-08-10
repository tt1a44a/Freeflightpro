.class public final enum Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;
.super Ljava/lang/Enum;
.source "WayPointRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WayPointRecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_ADD:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_ALTITUDE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_BUCKLE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_CONTINUE_MODE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_LANDING_MODE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_LATLON:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_POI:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_REMOVE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_SPEED:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_UNBUCKLE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

.field public static final enum WAYPOINT_YAW:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_ADD"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_ADD:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 23
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_REMOVE"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_REMOVE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 25
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_ALTITUDE"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_ALTITUDE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 26
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_LATLON"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_LATLON:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 27
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_SPEED"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_SPEED:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 28
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_YAW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_YAW:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 29
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_CONTINUE_MODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_CONTINUE_MODE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 30
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_POI"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_POI:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 31
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_LANDING_MODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_LANDING_MODE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 33
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_BUCKLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_BUCKLE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 34
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const-string v1, "WAYPOINT_UNBUCKLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_UNBUCKLE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 21
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_ADD:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_REMOVE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_ALTITUDE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_LATLON:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_SPEED:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_YAW:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_CONTINUE_MODE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_POI:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_LANDING_MODE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_BUCKLE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_UNBUCKLE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->$VALUES:[Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->$VALUES:[Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    return-object v0
.end method
