.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$15;
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
    .line 621
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$15;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 624
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$15;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4700(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$15;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4800(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$15;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 627
    .local v0, "optionsWidth":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$15;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$4900(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 628
    return-void
.end method
