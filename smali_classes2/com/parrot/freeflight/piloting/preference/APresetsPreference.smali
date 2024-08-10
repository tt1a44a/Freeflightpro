.class public abstract Lcom/parrot/freeflight/piloting/preference/APresetsPreference;
.super Ljava/lang/Object;
.source "APresetsPreference.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# instance fields
.field protected final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/APresetsPreference;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/APresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/APresetsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method protected abstract getSharedPreferencesKey()Ljava/lang/String;
.end method
