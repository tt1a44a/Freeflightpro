.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;
.super Ljava/lang/Object;
.source "FpvEyesCalibrationPreferences.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# static fields
.field public static final DEFAULT_IPD:F = 63.0f

.field private static final DEFAULT_IPD_OFFSET:F = 0.0f

.field private static final DEFAULT_PAN_H:F = 0.0f

.field private static final DEFAULT_PAN_V:F = 0.0f

.field public static final DEFAULT_VIEW_SCALE:F = 1.25f

.field private static final PAN_MAX_OFFSET:F = 50.0f

.field public static final SETTINGS_VIEW_SCALE:F = 1.5f

.field private static final SHARED_PREFERENCES_IPD_COMPAT:Ljava/lang/String; = "SHARED_PREFERENCES_IPD"

.field private static final SHARED_PREFERENCES_IPD_OFFSET:Ljava/lang/String; = "SHARED_PREFERENCES_IPD_OFFSET"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "FpvEyesCalibrationPreferences"

.field private static final SHARED_PREFERENCES_PAN_H:Ljava/lang/String; = "SHARED_PREFERENCES_PAN_H"

.field private static final SHARED_PREFERENCES_PAN_V:Ljava/lang/String; = "SHARED_PREFERENCES_PAN_V"

.field private static final SHARED_PREFERENCES_VIEW_SCALE:Ljava/lang/String; = "SHARED_PREFERENCES_VIEW_SCALE"

.field private static final VIEW_SCALE_MIN:F = 0.0f

.field public static final VIEW_SCALE_SPEED:F = 0.01f


# instance fields
.field private mIpdOffset:F

.field private mPanH:F

.field private mPanV:F

.field private mPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mViewScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "FpvEyesCalibrationPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 39
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->update()V

    .line 40
    return-void
.end method

.method private removeIpdCompatFromPreferences()V
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "SHARED_PREFERENCES_IPD"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    return-void
.end method


# virtual methods
.method public getIpdOffset()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mIpdOffset:F

    return v0
.end method

.method public getPanH()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanH:F

    return v0
.end method

.method public getPanV()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanV:F

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getViewScale()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mViewScale:F

    return v0
.end method

.method public onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    const-string v0, "FpvEyesCalibrationPreferences"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->update()V

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/high16 v0, 0x3fa00000    # 1.25f

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mViewScale:F

    .line 44
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mIpdOffset:F

    .line 45
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanH:F

    .line 46
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanV:F

    .line 47
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->saveToPreferences()V

    .line 48
    return-void
.end method

.method public saveToPreferences()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "SHARED_PREFERENCES_VIEW_SCALE"

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mViewScale:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v1, "SHARED_PREFERENCES_IPD_OFFSET"

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mIpdOffset:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 74
    const-string v1, "SHARED_PREFERENCES_PAN_H"

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanH:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string v1, "SHARED_PREFERENCES_PAN_V"

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanV:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void
.end method

.method public setIpdOffset(F)V
    .locals 1
    .param p1, "ipdOffset"    # F

    .prologue
    .line 106
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mIpdOffset:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 107
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mIpdOffset:F

    .line 109
    :cond_0
    return-void
.end method

.method public setPanH(F)V
    .locals 3
    .param p1, "panH"    # F

    .prologue
    .line 95
    const/high16 v1, -0x3db80000    # -50.0f

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p1, v1, v2}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    .line 96
    .local v0, "newPanH":F
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanH:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 97
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanH:F

    .line 99
    :cond_0
    return-void
.end method

.method public setPanV(F)V
    .locals 3
    .param p1, "panV"    # F

    .prologue
    .line 84
    const/high16 v1, -0x3db80000    # -50.0f

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p1, v1, v2}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    .line 85
    .local v0, "newPanV":F
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanV:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 86
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanV:F

    .line 88
    :cond_0
    return-void
.end method

.method public setViewScale(F)V
    .locals 2
    .param p1, "viewScale"    # F

    .prologue
    .line 116
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 117
    .local v0, "newViewScale":F
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mViewScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 118
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mViewScale:F

    .line 120
    :cond_0
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const/high16 v4, 0x427c0000    # 63.0f

    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SHARED_PREFERENCES_VIEW_SCALE"

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mViewScale:F

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SHARED_PREFERENCES_IPD"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SHARED_PREFERENCES_IPD"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sub-float v0, v4, v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->setIpdOffset(F)V

    .line 56
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->removeIpdCompatFromPreferences()V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SHARED_PREFERENCES_PAN_H"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanH:F

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SHARED_PREFERENCES_PAN_V"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPanV:F

    .line 62
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SHARED_PREFERENCES_IPD_OFFSET"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->mIpdOffset:F

    goto :goto_0
.end method
