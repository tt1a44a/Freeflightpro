.class public abstract Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "GpsStatusesSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/model/SettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;",
        "Ljava/lang/Void;",
        "TV;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 11
    .local p0, "this":Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;, "Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry<TV;TU;>;"
    const/16 v0, 0x13

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;

    invoke-direct {v1}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getControllerGpsLevel()I
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;, "Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->getControllerGpsLevel()I

    move-result v0

    return v0
.end method

.method public getDroneGpsLevel()I
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;, "Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->getDroneGpsLevel()I

    move-result v0

    return v0
.end method

.method protected hasChanged(Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;)Z
    .locals 1
    .param p1, "oldValue"    # Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    .local p0, "this":Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;, "Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry<TV;TU;>;"
    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->update(Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic hasChanged(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8
    .local p0, "this":Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;, "Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;

    check-cast p2, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;->hasChanged(Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;)Z

    move-result v0

    return v0
.end method

.method public isReturnHomeAvailable()Z
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;, "Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/GpsStatusesState;->isReturnHomeAvailable()Z

    move-result v0

    return v0
.end method
