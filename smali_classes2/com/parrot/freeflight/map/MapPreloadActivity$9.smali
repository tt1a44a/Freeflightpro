.class Lcom/parrot/freeflight/map/MapPreloadActivity$9;
.super Ljava/lang/Object;
.source "MapPreloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/MapPreloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$9;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$9;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1600(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$9;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1500(Lcom/parrot/freeflight/map/MapPreloadActivity;)Lcom/parrot/freeflight/map/PreloadMapManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->startPreload(I)V

    .line 220
    return-void
.end method
