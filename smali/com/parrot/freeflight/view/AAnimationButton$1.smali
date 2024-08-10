.class Lcom/parrot/freeflight/view/AAnimationButton$1;
.super Ljava/lang/Object;
.source "AAnimationButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/view/AAnimationButton;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/view/AAnimationButton;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/view/AAnimationButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/view/AAnimationButton;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/parrot/freeflight/view/AAnimationButton$1;->this$0:Lcom/parrot/freeflight/view/AAnimationButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton$1;->this$0:Lcom/parrot/freeflight/view/AAnimationButton;

    invoke-static {v0}, Lcom/parrot/freeflight/view/AAnimationButton;->access$000(Lcom/parrot/freeflight/view/AAnimationButton;)Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton$1;->this$0:Lcom/parrot/freeflight/view/AAnimationButton;

    invoke-static {v0}, Lcom/parrot/freeflight/view/AAnimationButton;->access$100(Lcom/parrot/freeflight/view/AAnimationButton;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton$1;->this$0:Lcom/parrot/freeflight/view/AAnimationButton;

    invoke-static {v0}, Lcom/parrot/freeflight/view/AAnimationButton;->access$000(Lcom/parrot/freeflight/view/AAnimationButton;)Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;->onStopClicked()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton$1;->this$0:Lcom/parrot/freeflight/view/AAnimationButton;

    invoke-static {v0}, Lcom/parrot/freeflight/view/AAnimationButton;->access$000(Lcom/parrot/freeflight/view/AAnimationButton;)Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;->onOpenOptionsClicked()V

    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton$1;->this$0:Lcom/parrot/freeflight/view/AAnimationButton;

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/AAnimationButton;->openOptions()V

    goto :goto_0
.end method
