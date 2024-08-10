.class Lcom/parrot/freeflight/followme/FollowMeViewController$2;
.super Ljava/lang/Object;
.source "FollowMeViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/followme/FollowMeViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/followme/FollowMeViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/followme/FollowMeViewController;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 205
    .local v0, "action":I
    if-eq v0, v7, :cond_0

    .line 206
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v6}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$400(Lcom/parrot/freeflight/followme/FollowMeViewController;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    .line 207
    .local v1, "shouldSendCommand":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 236
    .end local v1    # "shouldSendCommand":Z
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    if-ne v0, v7, :cond_f

    :cond_1
    move v3, v2

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 237
    return v2

    .line 206
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 209
    .restart local v1    # "shouldSendCommand":Z
    :pswitch_0
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$500(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v5

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v5, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->throttleAtWithCommandsActivation(F)V

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_3

    .line 212
    :pswitch_1
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$500(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v3

    if-eqz v1, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->throttleAtWithCommandsActivation(F)V

    goto :goto_1

    .line 215
    :pswitch_2
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$600(Lcom/parrot/freeflight/followme/FollowMeViewController;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$600(Lcom/parrot/freeflight/followme/FollowMeViewController;)I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 216
    :cond_5
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$500(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v5

    if-eqz v1, :cond_6

    :goto_4
    invoke-virtual {v5, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->rollAtWithCommandsActivation(F)V

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_4

    .line 218
    :cond_7
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$500(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v5

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v5, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->yawToWithCommandsActivation(F)V

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_5

    .line 222
    :pswitch_3
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$600(Lcom/parrot/freeflight/followme/FollowMeViewController;)I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_9

    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$600(Lcom/parrot/freeflight/followme/FollowMeViewController;)I

    move-result v3

    if-ne v3, v7, :cond_b

    .line 223
    :cond_9
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$500(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v3

    if-eqz v1, :cond_a

    :goto_6
    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->rollAtWithCommandsActivation(F)V

    goto :goto_1

    :cond_a
    move v5, v4

    goto :goto_6

    .line 225
    :cond_b
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$500(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v3

    if-eqz v1, :cond_c

    :goto_7
    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->yawToWithCommandsActivation(F)V

    goto :goto_1

    :cond_c
    move v5, v4

    goto :goto_7

    .line 229
    :pswitch_4
    iget-object v5, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v5}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$500(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v5

    if-eqz v1, :cond_d

    :goto_8
    invoke-virtual {v5, v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->pitchAtWithCommandsActivation(F)V

    goto/16 :goto_1

    :cond_d
    move v3, v4

    goto :goto_8

    .line 232
    :pswitch_5
    iget-object v3, p0, Lcom/parrot/freeflight/followme/FollowMeViewController$2;->this$0:Lcom/parrot/freeflight/followme/FollowMeViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/followme/FollowMeViewController;->access$500(Lcom/parrot/freeflight/followme/FollowMeViewController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v3

    if-eqz v1, :cond_e

    :goto_9
    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->pitchAtWithCommandsActivation(F)V

    goto/16 :goto_1

    :cond_e
    move v5, v4

    goto :goto_9

    .line 236
    .end local v1    # "shouldSendCommand":Z
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 207
    :pswitch_data_0
    .packed-switch 0x7f0a00a4
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
