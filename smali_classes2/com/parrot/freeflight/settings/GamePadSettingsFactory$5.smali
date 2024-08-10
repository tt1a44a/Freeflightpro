.class final Lcom/parrot/freeflight/settings/GamePadSettingsFactory$5;
.super Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;
.source "GamePadSettingsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addNetworkSsid(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field final synthetic val$remoteModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p2, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$5;->val$remoteModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;-><init>(Ljava/lang/String;)V

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
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$5;->readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/String;

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
    .line 155
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p2, "model2":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$5;->val$remoteModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$5;->sendValue(Ljava/lang/String;)V

    return-void
.end method

.method public sendValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$5;->val$remoteModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$5;->val$remoteModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->requestSetSsid(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method
