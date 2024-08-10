.class Lcom/parrot/freeflight/map/MapPreloadTutoActivity$2;
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
    .line 31
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadTutoActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadTutoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadTutoActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadTutoActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapPreloadTutoActivity;->finish()V

    .line 35
    return-void
.end method
