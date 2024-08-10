.class Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$1;
.super Ljava/lang/Object;
.source "ArtificialHorizonController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->access$000(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-static {v0, v1, v1}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->access$100(Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;FF)V

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->onResume()V

    .line 53
    return-void
.end method
