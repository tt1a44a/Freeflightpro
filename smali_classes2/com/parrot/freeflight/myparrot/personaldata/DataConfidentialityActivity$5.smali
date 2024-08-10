.class Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$5;
.super Ljava/lang/Object;
.source "DataConfidentialityActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$5;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$5;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->access$100(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)V

    .line 97
    return-void
.end method
