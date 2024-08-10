.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->initFlipListMenu()V
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
    .line 1093
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1096
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1110
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$5500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setCurrentFlipDirection(I)V

    .line 1113
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$5600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getCurrentFlipDirection()I

    move-result v0

    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$5700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;I)V

    .line 1114
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$002(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Z)Z

    .line 1115
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Landroid/view/View;I)V

    .line 1117
    return-void

    .line 1098
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$5100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setCurrentFlipDirection(I)V

    goto :goto_0

    .line 1101
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$5200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setCurrentFlipDirection(I)V

    goto :goto_0

    .line 1104
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$5300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setCurrentFlipDirection(I)V

    goto :goto_0

    .line 1107
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$18;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$5400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setCurrentFlipDirection(I)V

    goto :goto_0

    .line 1096
    :pswitch_data_0
    .packed-switch 0x7f0a0074
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
