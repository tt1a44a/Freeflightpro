.class public Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;
.super Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
.source "TimelineTakePictureAction.java"


# static fields
.field private static final DEFAULT_FORMAT:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

.field private static final DEFAULT_INTERVAL:F = 10.0f

.field private static final FLIGHTPLAN_TAKEPICTURE_FORMAT_KEY:Ljava/lang/String; = "FLIGHTPLAN_TAKEPICTURE_FORMAT_KEY"

.field private static final FLIGHTPLAN_TAKEPICTURE_INTERVAL_KEY:Ljava/lang/String; = "FLIGHTPLAN_TAKEPICTURE_INTERVAL_KEY"

.field private static final MAX_INTERVAL:F = 300.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->FORMAT_RAW:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->DEFAULT_FORMAT:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f110246

    const v1, 0x7f0702d0

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;-><init>(II)V

    .line 31
    return-void
.end method

.method private initParameters()V
    .locals 9

    .prologue
    const/high16 v8, 0x43960000    # 300.0f

    .line 38
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 39
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 41
    .local v5, "res":Landroid/content/res/Resources;
    const-string v6, "FLIGHTPLAN_TAKEPICTURE_INTERVAL_KEY"

    const/high16 v7, 0x41200000    # 10.0f

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v1

    .line 42
    .local v1, "defaultInterval":F
    new-instance v3, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    const v6, 0x7f11023c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 43
    .local v3, "intervalParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    invoke-virtual {v3, v8}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMaxValue(F)V

    .line 44
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setPositive(Z)V

    .line 45
    const v6, 0x7f110674

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setUnit(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->addParameter(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;)V

    .line 48
    const-string v6, "FLIGHTPLAN_TAKEPICTURE_FORMAT_KEY"

    sget-object v7, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->DEFAULT_FORMAT:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getFormatName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "defaultFormat":Ljava/lang/String;
    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    const v6, 0x7f11023a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getFormatArray()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v2, "formatParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->addParameter(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;)V

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    .line 115
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->mParameterList:Ljava/util/List;

    .line 116
    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->initParameters()V

    .line 117
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getInterval()F

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getFormat()Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->setParameters(FLcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;)V

    .line 118
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
    .line 21
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    move-result-object v0

    return-object v0
.end method

.method public createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 3
    .param p1, "isStartMedia"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getInterval()F

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getFormat()Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getResolution()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;-><init>(FF)V

    .line 137
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;-><init>()V

    goto :goto_0
.end method

.method public getFormat()Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    .line 69
    .local v0, "formatParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getFormat(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->DEFAULT_FORMAT:Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    goto :goto_0
.end method

.method public getInterval()F
    .locals 2

    .prologue
    .line 62
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 63
    .local v0, "intervalParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
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
    .line 103
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05006c

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_PHOTO:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    return-object v0
.end method

.method public getValuesString()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getInterval()F

    move-result v1

    .line 85
    .local v1, "interval":F
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getFormat()Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getFormatName()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "format":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110241

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getFloatValueString(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public initDefaultValues(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 1
    .param p1, "productCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getParameterSize()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->initParameters()V

    .line 35
    :cond_0
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

    .line 123
    instance-of v2, p1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 124
    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    .line 126
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getInterval()F

    move-result v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getInterval()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getFormat()Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getFormat()Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 128
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;
    :cond_0
    return v1
.end method

.method public saveParametersInAction()V
    .locals 3

    .prologue
    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 75
    .local v0, "intervalParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v0, :cond_0

    .line 76
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getFormat()Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getMaxFps()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMinValue(F)V

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->saveParametersInAction()V

    .line 79
    return-void
.end method

.method public saveParametersInActionAsDefault()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->saveParametersInActionAsDefault()V

    .line 92
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "FLIGHTPLAN_TAKEPICTURE_INTERVAL_KEY"

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getInterval()F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v2, "FLIGHTPLAN_TAKEPICTURE_FORMAT_KEY"

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getFormat()Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method

.method public setParameters(FLcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;)V
    .locals 3
    .param p1, "interval"    # F
    .param p2, "format"    # Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 55
    .local v1, "intervalParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setValue(Ljava/lang/Float;)V

    .line 57
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    .line 58
    .local v0, "formatParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->setValue(Ljava/lang/Object;)V

    .line 59
    :cond_1
    return-void
.end method
