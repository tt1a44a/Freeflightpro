.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$1;
.super Ljava/lang/Object;
.source "FpvHorizonController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->access$000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->access$100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;)V

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->onResume()V

    .line 61
    return-void
.end method
