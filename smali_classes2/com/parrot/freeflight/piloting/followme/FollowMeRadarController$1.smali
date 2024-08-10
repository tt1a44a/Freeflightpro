.class Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$1;
.super Ljava/lang/Object;
.source "FollowMeRadarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$1;->this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$1;->this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->access$000(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotingMode()I

    move-result v0

    .line 81
    .local v0, "followMeMode":I
    packed-switch v0, :pswitch_data_0

    .line 89
    const/4 v1, -0x1

    .line 92
    .local v1, "newMode":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$1;->this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->access$100(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 94
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController$1;->this$0:Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;->access$000(Lcom/parrot/freeflight/piloting/followme/FollowMeRadarController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->startFollowMeMode(I)V

    .line 96
    :cond_0
    return-void

    .line 83
    .end local v1    # "newMode":I
    :pswitch_0
    const/4 v1, 0x3

    .line 84
    .restart local v1    # "newMode":I
    goto :goto_0

    .line 86
    .end local v1    # "newMode":I
    :pswitch_1
    const/4 v1, 0x2

    .line 87
    .restart local v1    # "newMode":I
    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
