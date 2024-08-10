.class Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$1;
.super Ljava/lang/Object;
.source "MusicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)V

    .line 86
    return-void
.end method
