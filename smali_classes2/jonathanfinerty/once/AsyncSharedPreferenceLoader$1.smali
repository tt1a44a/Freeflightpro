.class Ljonathanfinerty/once/AsyncSharedPreferenceLoader$1;
.super Landroid/os/AsyncTask;
.source "AsyncSharedPreferenceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljonathanfinerty/once/AsyncSharedPreferenceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;


# direct methods
.method constructor <init>(Ljonathanfinerty/once/AsyncSharedPreferenceLoader;)V
    .locals 0
    .param p1, "this$0"    # Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    .prologue
    .line 13
    iput-object p1, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader$1;->this$0:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 16
    iget-object v0, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader$1;->this$0:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    invoke-static {v0}, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->access$000(Ljonathanfinerty/once/AsyncSharedPreferenceLoader;)Landroid/content/Context;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljonathanfinerty/once/AsyncSharedPreferenceLoader$1;->doInBackground([Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
