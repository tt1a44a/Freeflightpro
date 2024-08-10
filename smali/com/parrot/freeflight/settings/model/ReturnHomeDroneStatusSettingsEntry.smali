.class public abstract Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "ReturnHomeDroneStatusSettingsEntry.java"


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
        "Ljava/lang/Integer;",
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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry<TV;TU;>;"
    const/16 v0, 0xe

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry<TV;TU;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected hasChanged(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "oldValue"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry<TV;TU;>;"
    if-eq p1, p2, :cond_0

    .line 17
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;->mValue:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry<TV;TU;>;"
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;->hasChanged(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
