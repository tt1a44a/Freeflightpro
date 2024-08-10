.class public Lcom/parrot/freeflight/core/model/FlightPlanComponent;
.super Ljava/lang/Object;
.source "FlightPlanComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/FlightPlanComponent$Type;
    }
.end annotation


# static fields
.field public static final CALIBRATION:I = 0x1

.field public static final FILE:I = 0x2

.field public static final GPS:I = 0x0

.field public static final NB_COMPONENTS:I = 0x6

.field public static final TAKEOFF:I = 0x3

.field public static final UNKNOWN:I = -0x1

.field public static final WAYPOINT_BEYOND_GEOFENCE:I = 0x4


# instance fields
.field private mState:Z

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->mType:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->mState:Z

    .line 36
    return-void
.end method

.method public static createComponentsMap()Ljava/util/Map;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/FlightPlanComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 54
    .local v0, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/core/model/FlightPlanComponent;>;"
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_GPS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_CALIBRATION:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_MAVLINK_FILE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_TAKEOFF:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_WAYPOINTSBEYONDGEOFENCE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->eARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method


# virtual methods
.method public getState()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->mState:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->mType:I

    return v0
.end method

.method public setState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->mState:Z

    .line 45
    return-void
.end method
