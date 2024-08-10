.class final Lcom/parrot/freeflight/settings/GamePadSettingsFactory$8;
.super Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;
.source "GamePadSettingsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addMapping(Ljava/util/List;Landroid/content/res/Resources;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buttonName"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p3, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$8;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onButtonClicked()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$8;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$8;->val$context:Landroid/content/Context;

    const-class v3, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

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
    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$8;->readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/String;

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
    .line 211
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p2, "model2":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    const-string v0, ""

    return-object v0
.end method
