.class public Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
.super Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
.source "TimelineTiltAction.java"


# static fields
.field private static final ANGLE_INDEX:I = 0x0

.field private static final ANGULAR_SPEED_INDEX:I = 0x1

.field private static final FLIGHTPLAN_TILT_ANGLE_KEY:Ljava/lang/String; = "FLIGHTPLAN_TILT_ANGLE_KEY"

.field private static final FLIGHTPLAN_TILT_ANGLE_SPEED_KEY:Ljava/lang/String; = "FLIGHTPLAN_TILT_ANGLE_SPEED_KEY"


# instance fields
.field private mDefaultAngle:F

.field private mDefaultAngularSpeed:F

.field public mMaxAngle:F

.field private mMaxAngularSpeed:F

.field public mMinAngle:F

.field private mMinAngularSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const v0, 0x7f110247

    const v1, 0x7f0702d7

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;-><init>(II)V

    .line 34
    return-void
.end method

.method private initParameters()V
    .locals 9

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 66
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 68
    .local v4, "res":Landroid/content/res/Resources;
    const-string v6, "FLIGHTPLAN_TILT_ANGLE_KEY"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMinAngle:F

    iget v8, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMaxAngle:F

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v1

    .line 69
    .local v1, "defaultAngle":F
    new-instance v5, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    const v6, 0x7f110237

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 70
    .local v5, "rotateParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setPositive(Z)V

    .line 71
    iget v6, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMinAngle:F

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMinValue(F)V

    .line 72
    iget v6, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMaxAngle:F

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMaxValue(F)V

    .line 73
    const v6, 0x7f110192

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setUnit(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->addParameter(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;)V

    .line 76
    const-string v6, "FLIGHTPLAN_TILT_ANGLE_SPEED_KEY"

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mDefaultAngularSpeed:F

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMinAngularSpeed:F

    iget v8, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMaxAngularSpeed:F

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v2

    .line 77
    .local v2, "defaultSpeed":F
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    const v6, 0x7f110238

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 78
    .local v0, "angularSpeedParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setPositive(Z)V

    .line 79
    iget v6, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMinAngularSpeed:F

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMinValue(F)V

    .line 80
    iget v6, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMaxAngularSpeed:F

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMaxValue(F)V

    .line 81
    const v6, 0x7f110191

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setUnit(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->addParameter(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;)V

    .line 83
    return-void
.end method

.method private refreshDefaultValues()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getParameterSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->initParameters()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 56
    .local v0, "angularSpeedParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v0, :cond_0

    .line 57
    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMinAngularSpeed:F

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMinValue(F)V

    .line 58
    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMaxAngularSpeed:F

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMaxValue(F)V

    .line 59
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->refresh()V

    goto :goto_0
.end method

.method private setParameter(FF)V
    .locals 3
    .param p1, "angle"    # F
    .param p2, "speed"    # F

    .prologue
    .line 92
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 93
    .local v1, "rotateParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setValue(Ljava/lang/Float;)V

    .line 96
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 97
    .local v0, "angularSpeedParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setValue(Ljava/lang/Float;)V

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    .line 153
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mParameterList:Ljava/util/List;

    .line 154
    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->initParameters()V

    .line 155
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getAngle()F

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getSpeed()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->setParameter(FF)V

    .line 156
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
    .line 17
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    move-result-object v0

    return-object v0
.end method

.method public createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 3
    .param p1, "isStartMedia"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 181
    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mDefaultAngle:F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getAngle()F

    move-result v2

    sub-float v0, v1, v2

    .line 182
    .local v0, "realAbsoluteAngle":F
    new-instance v1, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getSpeed()F

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;-><init>(FF)V

    return-object v1
.end method

.method public getAngle()F
    .locals 2

    .prologue
    .line 114
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 115
    .local v0, "rotateParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
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

.method public getDefaultAngle()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mDefaultAngle:F

    return v0
.end method

.method public getMainColor()I
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05006f

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getMaxAngle()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMaxAngle:F

    return v0
.end method

.method public getMinAngle()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMinAngle:F

    return v0
.end method

.method public getRealAngle()F
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mDefaultAngle:F

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getAngle()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 119
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 120
    .local v0, "angularSpeedParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
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

.method public getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 171
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_TILT:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    return-object v0
.end method

.method public getValuesString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getAngle()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getFloatValueString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110192

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getSpeed()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getFloatValueString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110191

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initDefaultValues(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 2
    .param p1, "productCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultTiltSpeed()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mDefaultAngularSpeed:F

    .line 39
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinTiltSpeed()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMinAngularSpeed:F

    .line 40
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxTiltSpeed()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMaxAngularSpeed:F

    .line 44
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultTiltAngle()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mDefaultAngle:F

    .line 45
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mDefaultAngle:F

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxTiltAngle()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMinAngle:F

    .line 46
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mDefaultAngle:F

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinTiltAngle()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mMaxAngle:F

    .line 48
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->refreshDefaultValues()V

    .line 49
    return-void
.end method

.method public isActionEqual(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Z
    .locals 4
    .param p1, "otherAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 161
    instance-of v2, p1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 162
    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    .line 163
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getAngle()F

    move-result v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getAngle()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getSpeed()F

    move-result v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getSpeed()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 165
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
    :cond_0
    return v1
.end method

.method public saveParametersInActionAsDefault()V
    .locals 4

    .prologue
    .line 135
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->saveParametersInActionAsDefault()V

    .line 136
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "FLIGHTPLAN_TILT_ANGLE_KEY"

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getAngle()F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v2, "FLIGHTPLAN_TILT_ANGLE_SPEED_KEY"

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->getSpeed()F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    return-void
.end method

.method public setRealParameter(FF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "speed"    # F

    .prologue
    .line 87
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->mDefaultAngle:F

    sub-float/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->setParameter(FF)V

    .line 88
    return-void
.end method
