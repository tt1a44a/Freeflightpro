.class public abstract Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "CirclingDirectionToggleSettingsEntry.java"


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
        "Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;",
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
    .line 12
    .local p0, "this":Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;, "Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry<TV;TU;>;"
    const/16 v0, 0x9

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    invoke-direct {v1}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getValue()Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;, "Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;, "Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry<TV;TU;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;->getValue()Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    move-result-object v0

    return-object v0
.end method

.method protected hasChanged(Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;)Z
    .locals 1
    .param p1, "oldValue"    # Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    .local p0, "this":Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;, "Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry<TV;TU;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->getCirclingDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->update(I)Z

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
    .line 9
    .local p0, "this":Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;, "Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    check-cast p2, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/CirclingDirectionToggleSettingsEntry;->hasChanged(Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;)Z

    move-result v0

    return v0
.end method
