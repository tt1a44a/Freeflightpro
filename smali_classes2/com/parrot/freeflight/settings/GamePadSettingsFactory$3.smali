.class final Lcom/parrot/freeflight/settings/GamePadSettingsFactory$3;
.super Lcom/parrot/freeflight/settings/model/TextSettingsEntry;
.source "GamePadSettingsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addHardwareVersion(Ljava/util/List;Landroid/content/res/Resources;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/TextSettingsEntry",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p2, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$3;->val$value:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/model/TextSettingsEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$3;->readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p2, "settingsModel":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$3;->val$value:Ljava/lang/String;

    return-object v0
.end method
