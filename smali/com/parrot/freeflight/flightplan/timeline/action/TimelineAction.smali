.class public abstract Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
.super Ljava/lang/Object;
.source "TimelineAction.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final keySharedPreferences:Ljava/lang/String; = "com.parrot.freeFlight4.flightPlan.timelineAction"


# instance fields
.field private final mIconRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/flightplan/timeline/action/IActionValueSavedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mParameterList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "nameRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "iconRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mName:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mIconRes:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "iconRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mName:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mIconRes:I

    .line 38
    return-void
.end method


# virtual methods
.method public addParameter(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "parameter":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<*>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 4

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v0

    return-object v0
.end method

.method public abstract createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getActionDuration()F
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method protected getFloatValueString(F)Ljava/lang/String;
    .locals 6
    .param p1, "f"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 88
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 91
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public getIconRes()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 55
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mIconRes:I

    return v0
.end method

.method public abstract getMainColor()I
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParameterIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParameterSize()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPreferences()Landroid/content/SharedPreferences;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.parrot.freeFlight4.flightPlan.timelineAction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getValuesString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
    const-string v0, ""

    return-object v0
.end method

.method public initDefaultValues(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 0
    .param p1, "productCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    return-void
.end method

.method public isActionEqual(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Z
    .locals 1
    .param p1, "otherAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public saveParametersInAction()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    .line 100
    .local v0, "parameter":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->updateValue()V

    goto :goto_0

    .line 103
    .end local v0    # "parameter":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mListener:Lcom/parrot/freeflight/flightplan/timeline/action/IActionValueSavedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mListener:Lcom/parrot/freeflight/flightplan/timeline/action/IActionValueSavedListener;

    invoke-interface {v1, p0}, Lcom/parrot/freeflight/flightplan/timeline/action/IActionValueSavedListener;->saveActionValue(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 104
    :cond_1
    return-void
.end method

.method public saveParametersInActionAsDefault()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mParameterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    .line 133
    .local v0, "parameter":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->updateValue()V

    goto :goto_0

    .line 136
    .end local v0    # "parameter":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
    :cond_0
    return-void
.end method

.method public setActionValueSavedListener(Lcom/parrot/freeflight/flightplan/timeline/action/IActionValueSavedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightplan/timeline/action/IActionValueSavedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->mListener:Lcom/parrot/freeflight/flightplan/timeline/action/IActionValueSavedListener;

    .line 108
    return-void
.end method
