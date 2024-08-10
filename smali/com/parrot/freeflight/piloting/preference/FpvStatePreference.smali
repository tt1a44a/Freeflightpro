.class public Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
.super Ljava/lang/Object;
.source "FpvStatePreference.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/preference/FpvStatePreference$GlassesType;
    }
.end annotation


# static fields
.field public static final COCKPIT_GLASSES_1:I = 0x1

.field public static final COCKPIT_GLASSES_2:I = 0x2

.field private static FPV_AUTO_LAUNCH_DEFAULT_VALUE:Z = false

.field private static final FPV_AUTO_LAUNCH_ENABLED:Ljava/lang/String; = "fpv_auto_launch"

.field private static final FPV_ENABLED_KEY:Ljava/lang/String; = "fpv_enabled"

.field private static final GLASSES_TYPE:Ljava/lang/String; = "glasses_type"

.field private static final GLASSES_TYPE_DEFAULT_VALUE:I = 0x1

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "fpv_state_pref"


# instance fields
.field private mFpvAutoLaunchEnabled:Z

.field private mFpvEnabled:Z

.field private final mFpvSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGlassesType:I

.field private final mIsLargeScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->FPV_AUTO_LAUNCH_DEFAULT_VALUE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "fpv_state_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvSharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    invoke-static {p1}, Lcom/parrot/freeflight/util/Screen;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mIsLargeScreen:Z

    .line 45
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->update()V

    .line 46
    return-void
.end method

.method public static isFpvEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 107
    const-string v1, "fpv_state_pref"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, "fpvSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "fpv_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getGlassesType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mGlassesType:I

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public isFpvAutoLaunchEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvAutoLaunchEnabled:Z

    return v0
.end method

.method public isFpvEnabled()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvEnabled:Z

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
    .line 99
    const-string v0, "fpv_enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fpv_auto_launch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "glasses_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->update()V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->FPV_AUTO_LAUNCH_DEFAULT_VALUE:Z

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->setFpvAutoLaunchEnabled(Z)V

    .line 89
    return-void
.end method

.method public setFpvAutoLaunchEnabled(Z)V
    .locals 2
    .param p1, "isAutoLaunchEnabled"    # Z

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvAutoLaunchEnabled:Z

    if-eq p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fpv_auto_launch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    :cond_0
    return-void
.end method

.method public setFpvEnabled(Z)V
    .locals 2
    .param p1, "isFpvEnabled"    # Z

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvEnabled:Z

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mIsLargeScreen:Z

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fpv_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    :cond_0
    return-void
.end method

.method public setGlassesType(I)V
    .locals 2
    .param p1, "glassesType"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mGlassesType:I

    if-eq p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "glasses_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fpv_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvEnabled:Z

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fpv_auto_launch"

    sget-boolean v2, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->FPV_AUTO_LAUNCH_DEFAULT_VALUE:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvAutoLaunchEnabled:Z

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mFpvSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "glasses_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->mGlassesType:I

    .line 85
    return-void
.end method
