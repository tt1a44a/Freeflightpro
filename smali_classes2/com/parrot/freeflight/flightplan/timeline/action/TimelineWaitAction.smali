.class public Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;
.super Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
.source "TimelineWaitAction.java"


# static fields
.field private static final DEFAULT_DURATION:F = 10.0f

.field private static final FLIGHTPLAN_WAIT_DURATION_KEY:Ljava/lang/String; = "FLIGHTPLAN_WAIT_DURATION_KEY"

.field private static final MAX_WAIT_DURATION:F = 600.0f

.field private static final MIN_WAIT_DURATION:F = 1.0f


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const v0, 0x7f110240

    const v1, 0x7f070234

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;-><init>(II)V

    .line 25
    return-void
.end method

.method private initParameters()V
    .locals 8

    .prologue
    const/high16 v7, 0x44160000    # 600.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 34
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 36
    .local v2, "res":Landroid/content/res/Resources;
    const-string v4, "FLIGHTPLAN_WAIT_DURATION_KEY"

    const/high16 v5, 0x41200000    # 10.0f

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-static {v4, v6, v7}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    .line 37
    .local v0, "defaultAngle":F
    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    const v4, 0x7f1101da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 38
    .local v3, "waitDurationParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setPositive(Z)V

    .line 39
    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMinValue(F)V

    .line 40
    invoke-virtual {v3, v7}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMaxValue(F)V

    .line 41
    const v4, 0x7f110738

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setUnit(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->addParameter(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;

    .line 86
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->mParameterList:Ljava/util/List;

    .line 87
    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->initParameters()V

    .line 88
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getDelay()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->setParameter(F)V

    .line 89
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;

    move-result-object v0

    return-object v0
.end method

.method public createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 2
    .param p1, "isStartMedia"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/DelayAction;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getDelay()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/flightplan/model/action/DelayAction;-><init>(F)V

    return-object v0
.end method

.method public getActionDuration()F
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getDelay()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getDelay()F
    .locals 2

    .prologue
    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 52
    .local v0, "waitDurationParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMainColor()I
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050071

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_WAIT:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    return-object v0
.end method

.method public getValuesString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getDelay()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getFloatValueString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110674

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initDefaultValues(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 1
    .param p1, "productCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getParameterSize()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->initParameters()V

    .line 30
    :cond_0
    return-void
.end method

.method public saveParametersInActionAsDefault()V
    .locals 4

    .prologue
    .line 63
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->saveParametersInActionAsDefault()V

    .line 64
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "FLIGHTPLAN_WAIT_DURATION_KEY"

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getDelay()F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    return-void
.end method

.method public setParameter(F)V
    .locals 2
    .param p1, "delay"    # F

    .prologue
    .line 46
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 47
    .local v0, "waitDurationParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setValue(Ljava/lang/Float;)V

    .line 48
    :cond_0
    return-void
.end method
