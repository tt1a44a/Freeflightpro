.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->initBebopButtonsOnClickListeners()V
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
    .line 602
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 606
    const-string v1, "BebopHudView"

    const-string v2, "click on flip menu button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 616
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4600(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Landroid/view/View;I)V

    .line 617
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$002(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Z)Z

    .line 618
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4202(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 613
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4400(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 614
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$14;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4500(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V

    goto :goto_0
.end method
