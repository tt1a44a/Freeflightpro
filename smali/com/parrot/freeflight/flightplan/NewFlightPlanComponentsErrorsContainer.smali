.class public Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;
.super Ljava/lang/Object;
.source "NewFlightPlanComponentsErrorsContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer$OnCalibrateClickListener;,
        Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer$OnRetryClickListener;
    }
.end annotation


# instance fields
.field private mComponentsErrors:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V
    .locals 1
    .param p1, "flightPlanMapUIController"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;->createComponentsErrorsMap(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;->mComponentsErrors:Ljava/util/Map;

    .line 21
    return-void
.end method


# virtual methods
.method public createComponentsErrorsMap(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Ljava/util/Map;
    .locals 10
    .param p1, "flightPlanMapUIController"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/flightplan/ui/MapUIController;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7f11012c

    const v9, 0x7f1104d4

    const/4 v6, 0x0

    .line 36
    new-instance v7, Ljava/util/HashMap;

    const/4 v0, 0x6

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 37
    .local v7, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;>;"
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_GPS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;

    new-instance v2, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    const v3, 0x7f11024e

    invoke-direct {v1, v2, v3, v9, v6}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;-><init>(Lcom/parrot/freeflight/core/model/FlightPlanComponent;IILandroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_CALIBRATION:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;

    new-instance v1, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    const v2, 0x7f11024c

    const v3, 0x7f1100ec

    new-instance v4, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer$OnCalibrateClickListener;

    invoke-direct {v4, p1}, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer$OnCalibrateClickListener;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;-><init>(Lcom/parrot/freeflight/core/model/FlightPlanComponent;IILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_MAVLINK_FILE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;

    new-instance v2, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    const v3, 0x7f11024d

    invoke-direct {v1, v2, v3, v9, v6}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;-><init>(Lcom/parrot/freeflight/core/model/FlightPlanComponent;IILandroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_TAKEOFF:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;

    new-instance v2, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    const v3, 0x7f11024f

    invoke-direct {v1, v2, v3, v9, v6}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;-><init>(Lcom/parrot/freeflight/core/model/FlightPlanComponent;IILandroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_WAYPOINTSBEYONDGEOFENCE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;

    new-instance v2, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    const v3, 0x7f110250

    invoke-direct {v1, v2, v3, v9, v6}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;-><init>(Lcom/parrot/freeflight/core/model/FlightPlanComponent;IILandroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->eARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_FLIGHTPLANSTATE_COMPONENTSTATELISTCHANGED_COMPONENT_ENUM;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;

    new-instance v1, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;-><init>(I)V

    const v2, 0x7f110251

    const v3, 0x7f11064f

    new-instance v4, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer$OnRetryClickListener;

    invoke-direct {v4, p1}, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer$OnRetryClickListener;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;-><init>(Lcom/parrot/freeflight/core/model/FlightPlanComponent;IILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object v7
.end method

.method public getComponentsErrors()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;->mComponentsErrors:Ljava/util/Map;

    return-object v0
.end method

.method public resetComponentsErrorState()V
    .locals 4

    .prologue
    .line 24
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/NewFlightPlanComponentsErrorsContainer;->mComponentsErrors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;

    .line 25
    .local v0, "errorComponent":Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->getComponent()Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->setState(Z)V

    goto :goto_0

    .line 27
    .end local v0    # "errorComponent":Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;
    :cond_0
    return-void
.end method
