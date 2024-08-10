.class Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6$1;
.super Ljava/lang/Object;
.source "MyFlightsDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6$1;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6$1;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$1200(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    .line 303
    return-void
.end method
