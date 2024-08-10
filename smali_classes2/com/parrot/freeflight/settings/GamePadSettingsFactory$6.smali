.class final Lcom/parrot/freeflight/settings/GamePadSettingsFactory$6;
.super Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;
.source "GamePadSettingsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/GamePadSettingsFactory;->addWifiChannel(Ljava/util/List;Landroid/content/res/Resources;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry",
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
    .line 168
    iput-object p2, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$6;->val$remoteModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;
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
            "Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p2, "model2":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$6;->val$remoteModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getWifiChannelState()Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    move-result-object v0

    return-object v0
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
    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$6;->readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    move-result-object v0

    return-object v0
.end method

.method public sendValue(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)V
    .locals 1
    .param p1, "newValue"    # Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$6;->val$remoteModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->selectWifiChannel(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)V

    .line 178
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    check-cast p1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/GamePadSettingsFactory$6;->sendValue(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)V

    return-void
.end method
