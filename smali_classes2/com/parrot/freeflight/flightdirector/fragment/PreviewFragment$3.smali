.class Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$3;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->access$500(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;)V

    .line 141
    return-void
.end method
