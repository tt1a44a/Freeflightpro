.class Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$8;
.super Ljava/lang/Object;
.source "MyFlightsDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->displayFlight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

.field final synthetic val$finalAcademyRun:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$8;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$8;->val$finalAcademyRun:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$8;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$1500(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$8;->val$finalAcademyRun:Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$8;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$1400(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->sendRunByEmail(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 434
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$8;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$1602(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Z)Z

    .line 435
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$8;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$1700(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    .line 436
    return-void
.end method
