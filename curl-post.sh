EM="some url"

for j in `cat some.text | awk -F ". " '{print $1}'`
    do
        curl -X POST -k -H "Content-Type: application/json " -H "Authorization:Basic Some Long String" $EM --data '{"Name":  "   '$j'   "}'

    done
