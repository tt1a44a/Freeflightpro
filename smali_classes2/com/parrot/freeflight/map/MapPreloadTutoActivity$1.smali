.class Lcom/parrot/freeflight/map/MapPreloadTutoActivity$1;
.super Ljava/lang/Object;
.source "MapPreloadTutoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/MapPreloadTutoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/MapPreloadTutoActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/MapPreloadTutoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/MapPreloadTutoActivity;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadTutoActivity$1;->this$0:Lcom/parrot/freeflight/map/MapPreloadTutoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadTutoActivity$1;->this$0:Lcom/parrot/freeflight/map/MapPreloadTutoActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/MapPreloadTutoActivity;->setResult(I)V

    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadTutoActivity$1;->this$0:Lcom/parrot/freeflight/map/MapPreloadTutoActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapPreloadTutoActivity;->finish()V

    .line 28
    return-void
.end method
