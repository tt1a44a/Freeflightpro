.class Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment$3;
.super Ljava/lang/Object;
.source "StyleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;I)V

    .line 72
    return-void
.end method
