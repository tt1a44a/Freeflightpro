.class Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder$1;
.super Ljava/lang/Object;
.source "FlightDataAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->setView(Lcom/parrot/freeflight/flightdirector/data/FlightData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;

.field final synthetic val$flightData:Lcom/parrot/freeflight/flightdirector/data/FlightData;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;Lcom/parrot/freeflight/flightdirector/data/FlightData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;

    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder$1;->val$flightData:Lcom/parrot/freeflight/flightdirector/data/FlightData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->access$000(Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;)Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->access$000(Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;)Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder$1;->val$flightData:Lcom/parrot/freeflight/flightdirector/data/FlightData;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/data/FlightData;->getTheme()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;->onThemeSelected(I)V

    .line 117
    :cond_0
    return-void
.end method
