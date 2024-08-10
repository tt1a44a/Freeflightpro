.class Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$2;
.super Ljava/lang/Object;
.source "FlightDirectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->onBackPressed()V

    .line 142
    return-void
.end method
