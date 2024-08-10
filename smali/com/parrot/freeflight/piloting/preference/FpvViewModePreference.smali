.class public Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;
.super Ljava/lang/Object;
.source "FpvViewModePreference.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference$ViewMode;
    }
.end annotation


# static fields
.field public static final DRONE_VIEW:I = 0x0

.field private static final FPV_VIEW_MODE_KEY:Ljava/lang/String; = "fpv_view_mode"

.field public static final SEE_THROUGH:I = 0x1

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "fpv_view_mode_pref"


# instance fields
.field private final mFpvViewModeSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "fpv_view_mode_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->mFpvViewModeSharedPreferences:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->mFpvViewModeSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getViewMode()I
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->mFpvViewModeSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fpv_view_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

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
    .line 58
    const-string v0, "fpv_view_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->setViewMode(I)V

    .line 48
    return-void
.end method

.method public setViewMode(I)V
    .locals 2
    .param p1, "viewMode"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->mFpvViewModeSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fpv_view_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    return-void
.end method

.method public switchMode()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->getViewMode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 43
    .local v0, "newViewMode":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/FpvViewModePreference;->setViewMode(I)V

    .line 44
    return-void

    .line 42
    .end local v0    # "newViewMode":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
