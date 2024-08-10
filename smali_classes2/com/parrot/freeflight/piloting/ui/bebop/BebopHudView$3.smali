.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 236
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v8}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v3

    .line 237
    .local v3, "isConnected":Z
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget v8, v8, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    if-ne v8, v11, :cond_4

    move v4, v6

    .line 239
    .local v4, "isInLookAt":Z
    :goto_0
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v8}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DroneModel;->getFollowMeRequirementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    move-result-object v5

    .line 241
    .local v5, "requirementContainer":Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 242
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v8, v6}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->followMeStateToPilotingMode(I)I

    move-result v8

    new-array v9, v6, [I

    const/4 v10, 0x2

    aput v10, v9, v7

    invoke-virtual {v5, v8, v9}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->hasOneRequestType(I[I)Z

    move-result v1

    .line 245
    .local v1, "badDroneGpsAccuracy":Z
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v8, v6}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->followMeStateToPilotingMode(I)I

    move-result v8

    new-array v9, v6, [I

    aput v11, v9, v7

    invoke-virtual {v5, v8, v9}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->hasOneRequestType(I[I)Z

    move-result v0

    .line 248
    .local v0, "badDeviceGpsAccuracy":Z
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v8, v6}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->followMeStateToPilotingMode(I)I

    move-result v8

    new-array v9, v6, [I

    const/4 v10, 0x4

    aput v10, v9, v7

    invoke-virtual {v5, v8, v9}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->hasOneRequestType(I[I)Z

    move-result v2

    .line 252
    .local v2, "barometerMissing":Z
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v8}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->getShowOnError()Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v8, v8, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    if-nez v8, :cond_0

    .line 253
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v8}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$FollowMeListener;->onDisclaimerAgreed()V

    .line 257
    :cond_0
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v8}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/piloting/preference/FollowMePreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/preference/FollowMePreference;->getShowOnError()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 258
    :cond_1
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->showFollowMeChecking()V

    .line 262
    :cond_2
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v8, v8, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    if-eqz v8, :cond_3

    .line 263
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v9, v8, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    if-nez v1, :cond_5

    move v8, v6

    :goto_1
    invoke-virtual {v9, v8}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->updateDroneGpsStatus(Z)V

    .line 264
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v9, v8, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    if-nez v0, :cond_6

    move v8, v6

    :goto_2
    invoke-virtual {v9, v8}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->updateDeviceGpsStatus(Z)V

    .line 265
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v8, v8, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeCheckingView:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;

    if-nez v2, :cond_7

    :goto_3
    invoke-virtual {v8, v6}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeCheckingView;->updateBarometerStatus(Z)V

    .line 268
    .end local v0    # "badDeviceGpsAccuracy":Z
    .end local v1    # "badDroneGpsAccuracy":Z
    .end local v2    # "barometerMissing":Z
    :cond_3
    return-void

    .end local v4    # "isInLookAt":Z
    .end local v5    # "requirementContainer":Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    :cond_4
    move v4, v7

    .line 237
    goto/16 :goto_0

    .restart local v0    # "badDeviceGpsAccuracy":Z
    .restart local v1    # "badDroneGpsAccuracy":Z
    .restart local v2    # "barometerMissing":Z
    .restart local v4    # "isInLookAt":Z
    .restart local v5    # "requirementContainer":Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    :cond_5
    move v8, v7

    .line 263
    goto :goto_1

    :cond_6
    move v8, v7

    .line 264
    goto :goto_2

    :cond_7
    move v6, v7

    .line 265
    goto :goto_3
.end method
