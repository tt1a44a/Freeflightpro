.class public abstract Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "ToggleStateSettingsEntry.java"


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
        "Lcom/parrot/freeflight/util/ToggleState;",
        "Ljava/lang/Boolean;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field private final mAlternateRightDescription:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDescription:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mLeftStateName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRightStateName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "leftStateName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rightStateName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    const/4 v4, 0x0

    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "leftStateName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rightStateName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "leftStateName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rightStateName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "leftDescription"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "rightDescription"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    const/4 v0, 0x4

    new-instance v1, Lcom/parrot/freeflight/util/ToggleState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/ToggleState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 31
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->mLeftStateName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->mRightStateName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->mDescription:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->mAlternateRightDescription:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAlternateRightDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->mAlternateRightDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftStateName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->mLeftStateName:Ljava/lang/String;

    return-object v0
.end method

.method public getRightStateName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->mRightStateName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    return-object v0
.end method

.method protected hasChanged(Lcom/parrot/freeflight/util/ToggleState;Lcom/parrot/freeflight/util/ToggleState;)Z
    .locals 2
    .param p1, "oldValue"    # Lcom/parrot/freeflight/util/ToggleState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/util/ToggleState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/util/ToggleState;->isSettingEnabled()Z

    move-result v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/util/ToggleState;->getToggleState()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/util/ToggleState;

    check-cast p2, Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->hasChanged(Lcom/parrot/freeflight/util/ToggleState;Lcom/parrot/freeflight/util/ToggleState;)Z

    move-result v0

    return v0
.end method
