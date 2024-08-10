.class public abstract Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "PitchModeSettingsEntry.java"


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
        "Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;",
        "Ljava/lang/Integer;",
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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry<TV;TU;>;"
    const/16 v0, 0xa

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    invoke-direct {v1}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getValue()Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry<TV;TU;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;->getValue()Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    move-result-object v0

    return-object v0
.end method

.method protected hasChanged(Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;)Z
    .locals 1
    .param p1, "oldValue"    # Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry<TV;TU;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->getPitchMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->update(I)Z

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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    check-cast p2, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;->hasChanged(Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;)Z

    move-result v0

    return v0
.end method
