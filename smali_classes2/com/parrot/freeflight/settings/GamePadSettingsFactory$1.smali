.class final Lcom/parrot/freeflight/settings/GamePadSettingsFactory$1;
.super Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;
.source "GamePadSettingsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addGeneralInformation(Ljava/util/List;Landroid/content/res/Resources;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "imageRes"    # I

    .prologue
    .line 106
    iput-object p3, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$1;->val$value:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;-><init>(Ljava/lang/String;I)V

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
    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$1;->readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/String;

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
    .line 110
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p2, "settingsModel":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$1;->val$value:Ljava/lang/String;

    return-object v0
.end method
