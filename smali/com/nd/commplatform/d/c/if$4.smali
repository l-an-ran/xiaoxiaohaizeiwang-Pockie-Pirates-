.class final Lcom/nd/commplatform/d/c/if$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/if;->a(Lcom/nd/commplatform/entry/NdNewAppVersionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/nd/commplatform/d/c/if;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/if;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/if$4;->c:Lcom/nd/commplatform/d/c/if;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/if$4;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/if$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$4;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNewVersionUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/if$4;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/if$4;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/if$4;->a:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/if$4;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nd/commplatform/d/c/pf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$4;->c:Lcom/nd/commplatform/d/c/if;

    new-instance v1, Lcom/nd/commplatform/d/c/if$4$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/if$4$1;-><init>(Lcom/nd/commplatform/d/c/if$4;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/if;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
