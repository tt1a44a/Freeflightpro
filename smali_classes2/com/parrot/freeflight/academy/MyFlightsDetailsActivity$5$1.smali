.class Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5$1;
.super Ljava/lang/Object;
.source "MyFlightsDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5$1;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5$1;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$900(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->shareMap()V

    .line 283
    return-void
.end method
