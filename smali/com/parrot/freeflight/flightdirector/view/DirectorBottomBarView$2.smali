.class Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$2;
.super Ljava/lang/Object;
.source "DirectorBottomBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$2;->this$0:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$2;->this$0:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->selectTab(I)V

    .line 242
    return-void
.end method
