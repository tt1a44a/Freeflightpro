.class public Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
.super Lcom/parrot/freeflight/core/model/Model;
.source "LocalSettingsModel.java"


# instance fields
.field private final mAppVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBebopFilmPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBebopRacingPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFpvViewModePreference:Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fpvStatePreference"    # Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/Model;-><init>()V

    .line 160
    new-instance v2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel$1;-><init>(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 54
    const-string v0, "Unknown"

    .line 56
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mAppVersion:Ljava/lang/String;

    .line 61
    new-instance v2, Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-direct {v2, p1, p2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    .line 62
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    .line 63
    new-instance v2, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvViewModePreference:Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    .line 64
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    .line 65
    new-instance v2, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    .line 66
    new-instance v2, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    .line 67
    new-instance v2, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    .line 68
    new-instance v2, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopFilmPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    .line 69
    new-instance v2, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopRacingPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    .line 70
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->update()V

    .line 71
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    .param p1, "x1"    # Landroid/content/SharedPreferences;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 199
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->notifyListener()V

    .line 202
    :cond_1
    return-void

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvViewModePreference:Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvViewModePreference:Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 185
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 187
    :cond_5
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 188
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 189
    :cond_6
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 191
    :cond_7
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 192
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 193
    :cond_8
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopFilmPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 194
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopFilmPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 195
    :cond_9
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopRacingPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopRacingPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;->onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private update()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->update()V

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->update()V

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->update()V

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopFilmPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;->update()V

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopRacingPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;->update()V

    .line 173
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->notifyListener()V

    .line 174
    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getBebopFilmPresetsPreferences()Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopFilmPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    return-object v0
.end method

.method public getBebopRacingPresetsPreferences()Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopRacingPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    return-object v0
.end method

.method public getFpvEyesCalibrationPreferences()Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    return-object v0
.end method

.method public getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    return-object v0
.end method

.method public getFpvViewModePreference()Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvViewModePreference:Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    return-object v0
.end method

.method public getInterfacePreference()Lcom/parrot/freeflight/piloting/preference/InterfacePreference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    return-object v0
.end method

.method public getJoystickState()Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    return-object v0
.end method

.method public getPresetModePreference()Lcom/parrot/freeflight/piloting/preference/PresetModePreference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    return-object v0
.end method

.method public getSafetyPreference()Lcom/parrot/freeflight/piloting/preference/SafetyPreference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isFpvEnabled()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->isFpvEnabled()Z

    move-result v0

    return v0
.end method

.method public listenEvents(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listen"    # Z

    .prologue
    .line 137
    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvViewModePreference:Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopFilmPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopRacingPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 158
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvViewModePreference:Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mFpvEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mInterfacePreference:Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mSafetyPreference:Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopFilmPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mBebopRacingPresetsPreferences:Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method
