.class public Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;
.super Lcom/parrot/freeflight/core/registration/RegistrationManager;
.source "FlightPlanRegistrationManager.java"


# static fields
.field private static final FEATURE_VALUE:Ljava/lang/String; = "flightplan"

.field private static final LAST_CHECK_TIME_SHARED_PREFS_NAME:Ljava/lang/String; = "flightplan_last_check_time_shared_prefs"

.field private static final PROMOTION_SHARED_PREFS_NAME:Ljava/lang/String; = "flightplan_promotion_shared_prefs"

.field private static final SECURITY_VALUE:Ljava/lang/String; = "493"

.field private static final TRIAL_SHARED_PREFS_NAME:Ljava/lang/String; = "flightplan_shared_prefs"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/InAppManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "inAppManager"    # Lcom/parrot/freeflight/core/InAppManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/parrot/freeflight/core/registration/RegistrationManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/InAppManager;Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getFlightPlanExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected getLastCheckTimeSharedPrefsName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 42
    const-string v0, "flightplan_last_check_time_shared_prefs"

    return-object v0
.end method

.method protected getPromotionSharedPrefsName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    const-string v0, "flightplan_promotion_shared_prefs"

    return-object v0
.end method

.method protected getTrialFeatureValue()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    const-string v0, "flightplan"

    return-object v0
.end method

.method protected getTrialSecurityValue()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    const-string v0, "493"

    return-object v0
.end method

.method protected getTrialSharedPrefsName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 30
    const-string v0, "flightplan_shared_prefs"

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/InAppManager;->isFlightPlanPurchased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isTrialValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->isPromotionActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPurchased()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/InAppManager;->isFlightPlanPurchased()Z

    move-result v0

    return v0
.end method

.method public purchase(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanRegistrationManager;->mInAppManager:Lcom/parrot/freeflight/core/InAppManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/InAppManager;->startFlightPlanPurchase(Landroid/app/Activity;)V

    .line 69
    return-void
.end method
