.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$13;
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
    .line 591
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$13;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$13;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->mFollowMeState:I

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$13;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->enterFollowMeMode()V

    .line 599
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$13;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->enterStreamingMode()V

    goto :goto_0
.end method
